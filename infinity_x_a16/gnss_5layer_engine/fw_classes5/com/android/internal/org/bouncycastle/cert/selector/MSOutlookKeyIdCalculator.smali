.class Lcom/android/internal/org/bouncycastle/cert/selector/MSOutlookKeyIdCalculator;
.super Ljava/lang/Object;
.source "MSOutlookKeyIdCalculator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/org/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;,
        Lcom/android/internal/org/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$GeneralDigest;
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static blacklist calculateKeyId(Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)[B
    .registers 5

    .line 17
    new-instance v0, Lcom/android/internal/org/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;-><init>()V

    .line 18
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->getDigestSize()I

    move-result v1

    new-array v1, v1, [B

    .line 19
    nop

    .line 22
    const/4 v2, 0x0

    :try_start_d
    const-string v3, "DER"

    invoke-virtual {p0, v3}, Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getEncoded(Ljava/lang/String;)[B

    move-result-object p0
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_13} :catch_1c

    .line 27
    nop

    .line 30
    array-length v3, p0

    invoke-virtual {v0, p0, v2, v3}, Lcom/android/internal/org/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->update([BII)V

    .line 32
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/org/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->doFinal([BI)I

    .line 34
    return-object v1

    .line 24
    :catch_1c
    move-exception p0

    .line 26
    new-array p0, v2, [B

    return-object p0
.end method
