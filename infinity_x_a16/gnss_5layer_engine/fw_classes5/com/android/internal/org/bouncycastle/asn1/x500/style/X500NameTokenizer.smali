.class public Lcom/android/internal/org/bouncycastle/asn1/x500/style/X500NameTokenizer;
.super Ljava/lang/Object;
.source "X500NameTokenizer.java"


# instance fields
.field private blacklist index:I

.field private final blacklist separator:C

.field private final blacklist value:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;)V
    .registers 3

    .line 20
    const/16 v0, 0x2c

    invoke-direct {p0, p1, v0}, Lcom/android/internal/org/bouncycastle/asn1/x500/style/X500NameTokenizer;-><init>(Ljava/lang/String;C)V

    .line 21
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;C)V
    .registers 4

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    if-eqz p1, :cond_26

    .line 29
    const/16 v0, 0x22

    if-eq p2, v0, :cond_1e

    const/16 v0, 0x5c

    if-eq p2, v0, :cond_1e

    .line 34
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/asn1/x500/style/X500NameTokenizer;->value:Ljava/lang/String;

    .line 35
    iput-char p2, p0, Lcom/android/internal/org/bouncycastle/asn1/x500/style/X500NameTokenizer;->separator:C

    .line 36
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const/4 p2, 0x1

    if-ge p1, p2, :cond_1a

    const/4 p1, 0x0

    goto :goto_1b

    :cond_1a
    const/4 p1, -0x1

    :goto_1b
    iput p1, p0, Lcom/android/internal/org/bouncycastle/asn1/x500/style/X500NameTokenizer;->index:I

    .line 37
    return-void

    .line 31
    :cond_1e
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "reserved separator character"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 27
    :cond_26
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method


# virtual methods
.method public blacklist hasMoreTokens()Z
    .registers 3

    .line 41
    iget v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x500/style/X500NameTokenizer;->index:I

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/x500/style/X500NameTokenizer;->value:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public blacklist nextToken()Ljava/lang/String;
    .registers 8

    .line 46
    iget v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x500/style/X500NameTokenizer;->index:I

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/x500/style/X500NameTokenizer;->value:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v0, v1, :cond_c

    .line 48
    const/4 v0, 0x0

    return-object v0

    .line 51
    :cond_c
    nop

    .line 52
    nop

    .line 54
    iget v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x500/style/X500NameTokenizer;->index:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    .line 55
    :goto_15
    iget v5, p0, Lcom/android/internal/org/bouncycastle/asn1/x500/style/X500NameTokenizer;->index:I

    add-int/2addr v5, v1

    iput v5, p0, Lcom/android/internal/org/bouncycastle/asn1/x500/style/X500NameTokenizer;->index:I

    iget-object v6, p0, Lcom/android/internal/org/bouncycastle/asn1/x500/style/X500NameTokenizer;->value:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v5, v6, :cond_4c

    .line 57
    iget-object v5, p0, Lcom/android/internal/org/bouncycastle/asn1/x500/style/X500NameTokenizer;->value:Ljava/lang/String;

    iget v6, p0, Lcom/android/internal/org/bouncycastle/asn1/x500/style/X500NameTokenizer;->index:I

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 59
    if-eqz v3, :cond_2e

    .line 61
    move v3, v2

    goto :goto_4b

    .line 63
    :cond_2e
    const/16 v6, 0x22

    if-ne v5, v6, :cond_35

    .line 65
    xor-int/lit8 v4, v4, 0x1

    goto :goto_4b

    .line 67
    :cond_35
    if-eqz v4, :cond_38

    goto :goto_4b

    .line 70
    :cond_38
    const/16 v6, 0x5c

    if-ne v5, v6, :cond_3e

    .line 72
    move v3, v1

    goto :goto_4b

    .line 74
    :cond_3e
    iget-char v6, p0, Lcom/android/internal/org/bouncycastle/asn1/x500/style/X500NameTokenizer;->separator:C

    if-ne v5, v6, :cond_4b

    .line 76
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/x500/style/X500NameTokenizer;->value:Ljava/lang/String;

    iget v2, p0, Lcom/android/internal/org/bouncycastle/asn1/x500/style/X500NameTokenizer;->index:I

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 78
    :cond_4b
    :goto_4b
    goto :goto_15

    .line 80
    :cond_4c
    if-nez v3, :cond_59

    if-nez v4, :cond_59

    .line 85
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/x500/style/X500NameTokenizer;->value:Ljava/lang/String;

    iget v2, p0, Lcom/android/internal/org/bouncycastle/asn1/x500/style/X500NameTokenizer;->index:I

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 82
    :cond_59
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "badly formatted directory string"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
