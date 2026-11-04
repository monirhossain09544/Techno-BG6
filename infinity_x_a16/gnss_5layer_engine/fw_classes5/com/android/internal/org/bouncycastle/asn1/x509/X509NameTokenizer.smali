.class public Lcom/android/internal/org/bouncycastle/asn1/x509/X509NameTokenizer;
.super Ljava/lang/Object;
.source "X509NameTokenizer.java"


# instance fields
.field private blacklist buf:Ljava/lang/StringBuffer;

.field private blacklist index:I

.field private blacklist separator:C

.field private blacklist value:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;)V
    .registers 3

    .line 22
    const/16 v0, 0x2c

    invoke-direct {p0, p1, v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/X509NameTokenizer;-><init>(Ljava/lang/String;C)V

    .line 23
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;C)V
    .registers 4

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/X509NameTokenizer;->buf:Ljava/lang/StringBuffer;

    .line 29
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/X509NameTokenizer;->value:Ljava/lang/String;

    .line 30
    const/4 p1, -0x1

    iput p1, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/X509NameTokenizer;->index:I

    .line 31
    iput-char p2, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/X509NameTokenizer;->separator:C

    .line 32
    return-void
.end method


# virtual methods
.method public blacklist hasMoreTokens()Z
    .registers 3

    .line 36
    iget v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/X509NameTokenizer;->index:I

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/X509NameTokenizer;->value:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eq v0, v1, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public blacklist nextToken()Ljava/lang/String;
    .registers 10

    .line 41
    iget v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/X509NameTokenizer;->index:I

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/X509NameTokenizer;->value:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v0, v1, :cond_c

    .line 43
    const/4 v0, 0x0

    return-object v0

    .line 46
    :cond_c
    iget v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/X509NameTokenizer;->index:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    .line 47
    nop

    .line 48
    nop

    .line 50
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/X509NameTokenizer;->buf:Ljava/lang/StringBuffer;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->setLength(I)V

    move v2, v3

    move v4, v2

    .line 52
    :goto_1a
    iget-object v5, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/X509NameTokenizer;->value:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-eq v0, v5, :cond_83

    .line 54
    iget-object v5, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/X509NameTokenizer;->value:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 56
    const/16 v6, 0x22

    if-ne v5, v6, :cond_37

    .line 58
    if-nez v2, :cond_30

    .line 60
    xor-int/lit8 v4, v4, 0x1

    .line 62
    :cond_30
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/X509NameTokenizer;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 63
    move v2, v3

    goto :goto_80

    .line 67
    :cond_37
    if-nez v2, :cond_7a

    if-eqz v4, :cond_3c

    goto :goto_7a

    .line 72
    :cond_3c
    const/16 v6, 0x5c

    if-ne v5, v6, :cond_47

    .line 74
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/X509NameTokenizer;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 75
    move v2, v1

    goto :goto_80

    .line 77
    :cond_47
    iget-char v7, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/X509NameTokenizer;->separator:C

    if-ne v5, v7, :cond_4c

    .line 79
    goto :goto_83

    .line 87
    :cond_4c
    const/16 v7, 0x23

    if-ne v5, v7, :cond_67

    iget-object v7, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/X509NameTokenizer;->buf:Ljava/lang/StringBuffer;

    iget-object v8, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/X509NameTokenizer;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->length()I

    move-result v8

    sub-int/2addr v8, v1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v7

    const/16 v8, 0x3d

    if-ne v7, v8, :cond_67

    .line 89
    iget-object v7, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/X509NameTokenizer;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_74

    .line 91
    :cond_67
    const/16 v7, 0x2b

    if-ne v5, v7, :cond_74

    iget-char v8, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/X509NameTokenizer;->separator:C

    if-eq v8, v7, :cond_74

    .line 93
    iget-object v7, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/X509NameTokenizer;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 96
    :cond_74
    :goto_74
    iget-object v6, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/X509NameTokenizer;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_80

    .line 69
    :cond_7a
    :goto_7a
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/X509NameTokenizer;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 70
    move v2, v3

    .line 99
    :goto_80
    add-int/lit8 v0, v0, 0x1

    .line 100
    goto :goto_1a

    .line 102
    :cond_83
    :goto_83
    iput v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/X509NameTokenizer;->index:I

    .line 104
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/X509NameTokenizer;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
