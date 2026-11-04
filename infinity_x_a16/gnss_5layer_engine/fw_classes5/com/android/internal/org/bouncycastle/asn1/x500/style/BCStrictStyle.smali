.class public Lcom/android/internal/org/bouncycastle/asn1/x500/style/BCStrictStyle;
.super Lcom/android/internal/org/bouncycastle/asn1/x500/style/BCStyle;
.source "BCStrictStyle.java"


# static fields
.field public static final blacklist INSTANCE:Lcom/android/internal/org/bouncycastle/asn1/x500/X500NameStyle;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 16
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/x500/style/BCStrictStyle;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/asn1/x500/style/BCStrictStyle;-><init>()V

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/x500/style/BCStrictStyle;->INSTANCE:Lcom/android/internal/org/bouncycastle/asn1/x500/X500NameStyle;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 13
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/x500/style/BCStyle;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist areEqual(Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;)Z
    .registers 7

    .line 20
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;->size()I

    move-result v0

    invoke-virtual {p2}, Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;->size()I

    move-result v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_c

    .line 22
    return v2

    .line 25
    :cond_c
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;->getRDNs()[Lcom/android/internal/org/bouncycastle/asn1/x500/RDN;

    move-result-object p1

    .line 26
    invoke-virtual {p2}, Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;->getRDNs()[Lcom/android/internal/org/bouncycastle/asn1/x500/RDN;

    move-result-object p2

    .line 28
    move v0, v2

    :goto_15
    array-length v1, p1

    if-eq v0, v1, :cond_26

    .line 30
    aget-object v1, p1, v0

    aget-object v3, p2, v0

    invoke-virtual {p0, v1, v3}, Lcom/android/internal/org/bouncycastle/asn1/x500/style/BCStrictStyle;->rdnAreEqual(Lcom/android/internal/org/bouncycastle/asn1/x500/RDN;Lcom/android/internal/org/bouncycastle/asn1/x500/RDN;)Z

    move-result v1

    if-nez v1, :cond_23

    .line 32
    return v2

    .line 28
    :cond_23
    add-int/lit8 v0, v0, 0x1

    goto :goto_15

    .line 36
    :cond_26
    const/4 p1, 0x1

    return p1
.end method
