.class public abstract Lcom/android/internal/org/bouncycastle/asn1/ASN1Util;
.super Ljava/lang/Object;
.source "ASN1Util.java"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static blacklist checkTag(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;II)Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;
    .registers 5

    .line 13
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->hasTag(II)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 19
    return-object p0

    .line 15
    :cond_7
    invoke-static {p1, p2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Util;->getTagText(II)Ljava/lang/String;

    move-result-object p1

    .line 16
    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Util;->getTagText(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;)Ljava/lang/String;

    move-result-object p0

    .line 17
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Expected "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " tag but found "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method static blacklist checkTag(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObjectParser;II)Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObjectParser;
    .registers 5

    .line 24
    invoke-interface {p0, p1, p2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObjectParser;->hasTag(II)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 30
    return-object p0

    .line 26
    :cond_7
    invoke-static {p1, p2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Util;->getTagText(II)Ljava/lang/String;

    move-result-object p1

    .line 27
    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Util;->getTagText(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObjectParser;)Ljava/lang/String;

    move-result-object p0

    .line 28
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Expected "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " tag but found "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public static blacklist getBaseUniversal(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;IIZI)Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .registers 5

    .line 170
    invoke-static {p0, p1, p2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Util;->checkTag(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;II)Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;

    move-result-object p0

    invoke-virtual {p0, p3, p4}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->getBaseUniversal(ZI)Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist getContextBaseUniversal(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;IZI)Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .registers 5

    .line 176
    const/16 v0, 0x80

    invoke-static {p0, v0, p1, p2, p3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Util;->getBaseUniversal(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;IIZI)Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist getExplicitBaseObject(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;II)Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;
    .registers 3

    .line 75
    invoke-static {p0, p1, p2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Util;->checkTag(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;II)Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->getExplicitBaseObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist getExplicitBaseTagged(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;II)Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;
    .registers 3

    .line 105
    invoke-static {p0, p1, p2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Util;->checkTag(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;II)Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->getExplicitBaseTagged()Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist getExplicitContextBaseObject(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;
    .registers 3

    .line 80
    const/16 v0, 0x80

    invoke-static {p0, v0, p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Util;->getExplicitBaseObject(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;II)Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist getExplicitContextBaseTagged(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;I)Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;
    .registers 3

    .line 110
    const/16 v0, 0x80

    invoke-static {p0, v0, p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Util;->getExplicitBaseTagged(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;II)Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist getImplicitBaseTagged(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;IIII)Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;
    .registers 5

    .line 136
    invoke-static {p0, p1, p2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Util;->checkTag(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;II)Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;

    move-result-object p0

    invoke-virtual {p0, p3, p4}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->getImplicitBaseTagged(II)Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist getImplicitContextBaseTagged(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;III)Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;
    .registers 5

    .line 142
    const/16 v0, 0x80

    invoke-static {p0, v0, p1, p2, p3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Util;->getImplicitBaseTagged(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;IIII)Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist getTagText(II)Ljava/lang/String;
    .registers 4

    .line 55
    const-string v0, "]"

    sparse-switch p0, :sswitch_data_66

    .line 64
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[UNIVERSAL "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 62
    :sswitch_1d
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[PRIVATE "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 60
    :sswitch_35
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[CONTEXT "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 58
    :sswitch_4d
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[APPLICATION "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    :sswitch_data_66
    .sparse-switch
        0x40 -> :sswitch_4d
        0x80 -> :sswitch_35
        0xc0 -> :sswitch_1d
    .end sparse-switch
.end method

.method static blacklist getTagText(Lcom/android/internal/org/bouncycastle/asn1/ASN1Tag;)Ljava/lang/String;
    .registers 2

    .line 40
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Tag;->getTagClass()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Tag;->getTagNumber()I

    move-result p0

    invoke-static {v0, p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Util;->getTagText(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist getTagText(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;)Ljava/lang/String;
    .registers 2

    .line 45
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->getTagClass()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result p0

    invoke-static {v0, p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Util;->getTagText(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist getTagText(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObjectParser;)Ljava/lang/String;
    .registers 2

    .line 50
    invoke-interface {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObjectParser;->getTagClass()I

    move-result v0

    invoke-interface {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObjectParser;->getTagNo()I

    move-result p0

    invoke-static {v0, p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Util;->getTagText(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist parseBaseUniversal(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObjectParser;IIZI)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 272
    invoke-static {p0, p1, p2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Util;->checkTag(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObjectParser;II)Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObjectParser;

    move-result-object p0

    invoke-interface {p0, p3, p4}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObjectParser;->parseBaseUniversal(ZI)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist parseContextBaseUniversal(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObjectParser;IZI)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 278
    const/16 v0, 0x80

    invoke-static {p0, v0, p1, p2, p3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Util;->parseBaseUniversal(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObjectParser;IIZI)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist parseExplicitBaseObject(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObjectParser;II)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 306
    invoke-static {p0, p1, p2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Util;->checkTag(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObjectParser;II)Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObjectParser;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObjectParser;->parseExplicitBaseObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist parseExplicitBaseTagged(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObjectParser;II)Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObjectParser;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 204
    invoke-static {p0, p1, p2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Util;->checkTag(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObjectParser;II)Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObjectParser;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObjectParser;->parseExplicitBaseTagged()Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObjectParser;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist parseExplicitContextBaseObject(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObjectParser;I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 312
    const/16 v0, 0x80

    invoke-static {p0, v0, p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Util;->parseExplicitBaseObject(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObjectParser;II)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist parseExplicitContextBaseTagged(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObjectParser;I)Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObjectParser;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 210
    const/16 v0, 0x80

    invoke-static {p0, v0, p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Util;->parseExplicitBaseTagged(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObjectParser;II)Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObjectParser;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist parseImplicitBaseTagged(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObjectParser;IIII)Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObjectParser;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 238
    invoke-static {p0, p1, p2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Util;->checkTag(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObjectParser;II)Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObjectParser;

    move-result-object p0

    invoke-interface {p0, p3, p4}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObjectParser;->parseImplicitBaseTagged(II)Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObjectParser;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist parseImplicitContextBaseTagged(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObjectParser;III)Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObjectParser;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 244
    const/16 v0, 0x80

    invoke-static {p0, v0, p1, p2, p3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Util;->parseImplicitBaseTagged(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObjectParser;IIII)Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObjectParser;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist tryGetBaseUniversal(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;IIZI)Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .registers 5

    .line 182
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->hasTag(II)Z

    move-result p1

    if-nez p1, :cond_8

    .line 184
    const/4 p0, 0x0

    return-object p0

    .line 187
    :cond_8
    invoke-virtual {p0, p3, p4}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->getBaseUniversal(ZI)Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist tryGetContextBaseUniversal(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;IZI)Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .registers 5

    .line 193
    const/16 v0, 0x80

    invoke-static {p0, v0, p1, p2, p3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Util;->tryGetBaseUniversal(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;IIZI)Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist tryGetExplicitBaseObject(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;II)Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;
    .registers 3

    .line 85
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->hasTag(II)Z

    move-result p1

    if-nez p1, :cond_8

    .line 87
    const/4 p0, 0x0

    return-object p0

    .line 90
    :cond_8
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->getExplicitBaseObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist tryGetExplicitBaseTagged(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;II)Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;
    .registers 3

    .line 115
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->hasTag(II)Z

    move-result p1

    if-nez p1, :cond_8

    .line 117
    const/4 p0, 0x0

    return-object p0

    .line 120
    :cond_8
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->getExplicitBaseTagged()Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist tryGetExplicitContextBaseObject(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;
    .registers 3

    .line 95
    const/16 v0, 0x80

    invoke-static {p0, v0, p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Util;->tryGetExplicitBaseObject(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;II)Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist tryGetExplicitContextBaseTagged(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;I)Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;
    .registers 3

    .line 125
    const/16 v0, 0x80

    invoke-static {p0, v0, p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Util;->tryGetExplicitBaseTagged(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;II)Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist tryGetImplicitBaseTagged(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;IIII)Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;
    .registers 5

    .line 148
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->hasTag(II)Z

    move-result p1

    if-nez p1, :cond_8

    .line 150
    const/4 p0, 0x0

    return-object p0

    .line 153
    :cond_8
    invoke-virtual {p0, p3, p4}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->getImplicitBaseTagged(II)Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist tryGetImplicitContextBaseTagged(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;III)Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;
    .registers 5

    .line 159
    const/16 v0, 0x80

    invoke-static {p0, v0, p1, p2, p3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Util;->tryGetImplicitBaseTagged(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;IIII)Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist tryParseBaseUniversal(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObjectParser;IIZI)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 284
    invoke-interface {p0, p1, p2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObjectParser;->hasTag(II)Z

    move-result p1

    if-nez p1, :cond_8

    .line 286
    const/4 p0, 0x0

    return-object p0

    .line 289
    :cond_8
    invoke-interface {p0, p3, p4}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObjectParser;->parseBaseUniversal(ZI)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist tryParseContextBaseUniversal(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObjectParser;IZI)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 295
    const/16 v0, 0x80

    invoke-static {p0, v0, p1, p2, p3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Util;->tryParseBaseUniversal(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObjectParser;IIZI)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist tryParseExplicitBaseObject(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObjectParser;II)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 318
    invoke-interface {p0, p1, p2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObjectParser;->hasTag(II)Z

    move-result p1

    if-nez p1, :cond_8

    .line 320
    const/4 p0, 0x0

    return-object p0

    .line 323
    :cond_8
    invoke-interface {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObjectParser;->parseExplicitBaseObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist tryParseExplicitBaseTagged(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObjectParser;II)Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObjectParser;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 216
    invoke-interface {p0, p1, p2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObjectParser;->hasTag(II)Z

    move-result p1

    if-nez p1, :cond_8

    .line 218
    const/4 p0, 0x0

    return-object p0

    .line 221
    :cond_8
    invoke-interface {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObjectParser;->parseExplicitBaseTagged()Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObjectParser;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist tryParseExplicitContextBaseObject(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObjectParser;I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 329
    const/16 v0, 0x80

    invoke-static {p0, v0, p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Util;->tryParseExplicitBaseObject(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObjectParser;II)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist tryParseExplicitContextBaseTagged(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObjectParser;I)Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObjectParser;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 227
    const/16 v0, 0x80

    invoke-static {p0, v0, p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Util;->tryParseExplicitBaseTagged(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObjectParser;II)Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObjectParser;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist tryParseImplicitBaseTagged(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObjectParser;IIII)Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObjectParser;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 250
    invoke-interface {p0, p1, p2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObjectParser;->hasTag(II)Z

    move-result p1

    if-nez p1, :cond_8

    .line 252
    const/4 p0, 0x0

    return-object p0

    .line 255
    :cond_8
    invoke-interface {p0, p3, p4}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObjectParser;->parseImplicitBaseTagged(II)Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObjectParser;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist tryParseImplicitContextBaseTagged(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObjectParser;III)Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObjectParser;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 261
    const/16 v0, 0x80

    invoke-static {p0, v0, p1, p2, p3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Util;->tryParseImplicitBaseTagged(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObjectParser;IIII)Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObjectParser;

    move-result-object p0

    return-object p0
.end method
