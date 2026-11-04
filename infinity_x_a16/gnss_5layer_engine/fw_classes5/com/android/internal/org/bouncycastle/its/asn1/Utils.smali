.class Lcom/android/internal/org/bouncycastle/its/asn1/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static blacklist octetStringFixed([B)[B
    .registers 3

    .line 30
    array-length v0, p0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_e

    array-length v0, p0

    const/16 v1, 0x20

    if-gt v0, v1, :cond_e

    .line 35
    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object p0

    return-object p0

    .line 32
    :cond_e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "octet string out of range"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static blacklist octetStringFixed([BI)[B
    .registers 3

    .line 15
    array-length v0, p0

    if-ne v0, p1, :cond_4

    .line 20
    return-object p0

    .line 17
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "octet string out of range"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
