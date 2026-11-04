.class public Lcom/android/internal/org/bouncycastle/cert/ocsp/OCSPRespBuilder;
.super Ljava/lang/Object;
.source "OCSPRespBuilder.java"


# static fields
.field public static final blacklist INTERNAL_ERROR:I = 0x2

.field public static final blacklist MALFORMED_REQUEST:I = 0x1

.field public static final blacklist SIG_REQUIRED:I = 0x5

.field public static final blacklist SUCCESSFUL:I = 0x0

.field public static final blacklist TRY_LATER:I = 0x3

.field public static final blacklist UNAUTHORIZED:I = 0x6


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist build(ILjava/lang/Object;)Lcom/android/internal/org/bouncycastle/cert/ocsp/OCSPResp;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/cert/ocsp/OCSPException;
        }
    .end annotation

    .line 33
    if-nez p2, :cond_13

    .line 35
    new-instance p2, Lcom/android/internal/org/bouncycastle/cert/ocsp/OCSPResp;

    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ocsp/OCSPResponse;

    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/ocsp/OCSPResponseStatus;

    invoke-direct {v1, p1}, Lcom/android/internal/org/bouncycastle/asn1/ocsp/OCSPResponseStatus;-><init>(I)V

    const/4 p1, 0x0

    invoke-direct {v0, v1, p1}, Lcom/android/internal/org/bouncycastle/asn1/ocsp/OCSPResponse;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ocsp/OCSPResponseStatus;Lcom/android/internal/org/bouncycastle/asn1/ocsp/ResponseBytes;)V

    invoke-direct {p2, v0}, Lcom/android/internal/org/bouncycastle/cert/ocsp/OCSPResp;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ocsp/OCSPResponse;)V

    return-object p2

    .line 38
    :cond_13
    instance-of v0, p2, Lcom/android/internal/org/bouncycastle/cert/ocsp/BasicOCSPResp;

    if-eqz v0, :cond_43

    .line 40
    check-cast p2, Lcom/android/internal/org/bouncycastle/cert/ocsp/BasicOCSPResp;

    .line 45
    :try_start_19
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/DEROctetString;

    invoke-virtual {p2}, Lcom/android/internal/org/bouncycastle/cert/ocsp/BasicOCSPResp;->getEncoded()[B

    move-result-object p2

    invoke-direct {v0, p2}, Lcom/android/internal/org/bouncycastle/asn1/DEROctetString;-><init>([B)V
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_22} :catch_3a

    .line 50
    nop

    .line 52
    new-instance p2, Lcom/android/internal/org/bouncycastle/asn1/ocsp/ResponseBytes;

    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/ocsp/OCSPObjectIdentifiers;->id_pkix_ocsp_basic:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {p2, v1, v0}, Lcom/android/internal/org/bouncycastle/asn1/ocsp/ResponseBytes;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;)V

    .line 55
    new-instance v0, Lcom/android/internal/org/bouncycastle/cert/ocsp/OCSPResp;

    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/ocsp/OCSPResponse;

    new-instance v2, Lcom/android/internal/org/bouncycastle/asn1/ocsp/OCSPResponseStatus;

    invoke-direct {v2, p1}, Lcom/android/internal/org/bouncycastle/asn1/ocsp/OCSPResponseStatus;-><init>(I)V

    invoke-direct {v1, v2, p2}, Lcom/android/internal/org/bouncycastle/asn1/ocsp/OCSPResponse;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ocsp/OCSPResponseStatus;Lcom/android/internal/org/bouncycastle/asn1/ocsp/ResponseBytes;)V

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/cert/ocsp/OCSPResp;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ocsp/OCSPResponse;)V

    return-object v0

    .line 47
    :catch_3a
    move-exception p1

    .line 49
    new-instance p2, Lcom/android/internal/org/bouncycastle/cert/ocsp/OCSPException;

    const-string v0, "can\'t encode object."

    invoke-direct {p2, v0, p1}, Lcom/android/internal/org/bouncycastle/cert/ocsp/OCSPException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    .line 59
    :cond_43
    new-instance p1, Lcom/android/internal/org/bouncycastle/cert/ocsp/OCSPException;

    const-string p2, "unknown response object"

    invoke-direct {p1, p2}, Lcom/android/internal/org/bouncycastle/cert/ocsp/OCSPException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
