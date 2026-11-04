.class public Landroid/net/http/SslCertificate;
.super Ljava/lang/Object;
.source "SslCertificate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/http/SslCertificate$DName;
    }
.end annotation


# static fields
.field private static greylist-max-o ISO_8601_DATE_FORMAT:Ljava/lang/String; = null

.field private static final greylist-max-o ISSUED_BY:Ljava/lang/String; = "issued-by"

.field private static final greylist-max-o ISSUED_TO:Ljava/lang/String; = "issued-to"

.field private static final greylist-max-o VALID_NOT_AFTER:Ljava/lang/String; = "valid-not-after"

.field private static final greylist-max-o VALID_NOT_BEFORE:Ljava/lang/String; = "valid-not-before"

.field private static final greylist-max-o X509_CERTIFICATE:Ljava/lang/String; = "x509-certificate"


# instance fields
.field private final greylist-max-o mIssuedBy:Landroid/net/http/SslCertificate$DName;

.field private final greylist-max-o mIssuedTo:Landroid/net/http/SslCertificate$DName;

.field private final greylist-max-o mValidNotAfter:Ljava/util/Date;

.field private final greylist-max-o mValidNotBefore:Ljava/util/Date;

.field private final greylist mX509Certificate:Ljava/security/cert/X509Certificate;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 53
    const-string/jumbo v0, "yyyy-MM-dd HH:mm:ssZ"

    sput-object v0, Landroid/net/http/SslCertificate;->ISO_8601_DATE_FORMAT:Ljava/lang/String;

    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 11
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 160
    invoke-static {p3}, Landroid/net/http/SslCertificate;->parseDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3

    invoke-static {p4}, Landroid/net/http/SslCertificate;->parseDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v4

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Landroid/net/http/SslCertificate;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;Ljava/security/cert/X509Certificate;)V

    .line 161
    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;)V
    .registers 11
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 174
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Landroid/net/http/SslCertificate;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;Ljava/security/cert/X509Certificate;)V

    .line 175
    return-void
.end method

.method private constructor greylist-max-o <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;Ljava/security/cert/X509Certificate;)V
    .registers 7

    .line 192
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 193
    new-instance v0, Landroid/net/http/SslCertificate$DName;

    invoke-direct {v0, p0, p1}, Landroid/net/http/SslCertificate$DName;-><init>(Landroid/net/http/SslCertificate;Ljava/lang/String;)V

    iput-object v0, p0, Landroid/net/http/SslCertificate;->mIssuedTo:Landroid/net/http/SslCertificate$DName;

    .line 194
    new-instance p1, Landroid/net/http/SslCertificate$DName;

    invoke-direct {p1, p0, p2}, Landroid/net/http/SslCertificate$DName;-><init>(Landroid/net/http/SslCertificate;Ljava/lang/String;)V

    iput-object p1, p0, Landroid/net/http/SslCertificate;->mIssuedBy:Landroid/net/http/SslCertificate$DName;

    .line 195
    invoke-static {p3}, Landroid/net/http/SslCertificate;->cloneDate(Ljava/util/Date;)Ljava/util/Date;

    move-result-object p1

    iput-object p1, p0, Landroid/net/http/SslCertificate;->mValidNotBefore:Ljava/util/Date;

    .line 196
    invoke-static {p4}, Landroid/net/http/SslCertificate;->cloneDate(Ljava/util/Date;)Ljava/util/Date;

    move-result-object p1

    iput-object p1, p0, Landroid/net/http/SslCertificate;->mValidNotAfter:Ljava/util/Date;

    .line 197
    iput-object p5, p0, Landroid/net/http/SslCertificate;->mX509Certificate:Ljava/security/cert/X509Certificate;

    .line 198
    return-void
.end method

.method public constructor whitelist <init>(Ljava/security/cert/X509Certificate;)V
    .registers 9

    .line 182
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v0

    invoke-interface {v0}, Ljava/security/Principal;->getName()Ljava/lang/String;

    move-result-object v2

    .line 183
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getIssuerDN()Ljava/security/Principal;

    move-result-object v0

    invoke-interface {v0}, Ljava/security/Principal;->getName()Ljava/lang/String;

    move-result-object v3

    .line 184
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getNotBefore()Ljava/util/Date;

    move-result-object v4

    .line 185
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getNotAfter()Ljava/util/Date;

    move-result-object v5

    .line 182
    move-object v1, p0

    move-object v6, p1

    invoke-direct/range {v1 .. v6}, Landroid/net/http/SslCertificate;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;Ljava/security/cert/X509Certificate;)V

    .line 187
    return-void
.end method

.method private static greylist-max-o cloneDate(Ljava/util/Date;)Ljava/util/Date;
    .registers 1

    .line 343
    if-nez p0, :cond_4

    .line 344
    const/4 p0, 0x0

    return-object p0

    .line 346
    :cond_4
    invoke-virtual {p0}, Ljava/util/Date;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Date;

    return-object p0
.end method

.method private static final greylist-max-o fingerprint([B)Ljava/lang/String;
    .registers 5

    .line 296
    if-nez p0, :cond_5

    .line 297
    const-string p0, ""

    return-object p0

    .line 299
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 300
    const/4 v1, 0x0

    :goto_b
    array-length v2, p0

    if-ge v1, v2, :cond_1f

    .line 301
    aget-byte v2, p0, v1

    .line 302
    const/4 v3, 0x1

    invoke-static {v0, v2, v3}, Lcom/android/internal/util/HexDump;->appendByteAsHex(Ljava/lang/StringBuilder;BZ)Ljava/lang/StringBuilder;

    .line 303
    add-int/lit8 v1, v1, 0x1

    array-length v2, p0

    if-eq v1, v2, :cond_1e

    .line 304
    const/16 v2, 0x3a

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 300
    :cond_1e
    goto :goto_b

    .line 307
    :cond_1f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private greylist-max-o formatCertificateDate(Landroid/content/Context;Ljava/util/Date;)Ljava/lang/String;
    .registers 3

    .line 519
    if-nez p2, :cond_5

    .line 520
    const-string p1, ""

    return-object p1

    .line 522
    :cond_5
    invoke-static {p1}, Landroid/text/format/DateFormat;->getMediumDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private static greylist-max-o formatDate(Ljava/util/Date;)Ljava/lang/String;
    .registers 3

    .line 333
    if-nez p0, :cond_5

    .line 334
    const-string p0, ""

    return-object p0

    .line 336
    :cond_5
    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v1, Landroid/net/http/SslCertificate;->ISO_8601_DATE_FORMAT:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static greylist getDigest(Ljava/security/cert/X509Certificate;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 280
    const-string v0, ""

    if-nez p0, :cond_5

    .line 281
    return-object v0

    .line 284
    :cond_5
    :try_start_5
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object p0

    .line 285
    invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p1

    .line 286
    invoke-virtual {p1, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p0

    .line 287
    invoke-static {p0}, Landroid/net/http/SslCertificate;->fingerprint([B)Ljava/lang/String;

    move-result-object p0
    :try_end_15
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_5 .. :try_end_15} :catch_18
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_5 .. :try_end_15} :catch_16

    return-object p0

    .line 290
    :catch_16
    move-exception p0

    .line 291
    return-object v0

    .line 288
    :catch_18
    move-exception p0

    .line 289
    return-object v0
.end method

.method private static greylist getSerialNumber(Ljava/security/cert/X509Certificate;)Ljava/lang/String;
    .registers 2

    .line 265
    const-string v0, ""

    if-nez p0, :cond_5

    .line 266
    return-object v0

    .line 268
    :cond_5
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object p0

    .line 269
    if-nez p0, :cond_c

    .line 270
    return-object v0

    .line 272
    :cond_c
    invoke-virtual {p0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object p0

    invoke-static {p0}, Landroid/net/http/SslCertificate;->fingerprint([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static greylist-max-o parseDate(Ljava/lang/String;)Ljava/util/Date;
    .registers 3

    .line 323
    :try_start_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v1, Landroid/net/http/SslCertificate;->ISO_8601_DATE_FORMAT:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0
    :try_end_b
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_b} :catch_c

    return-object p0

    .line 324
    :catch_c
    move-exception p0

    .line 325
    const/4 p0, 0x0

    return-object p0
.end method

.method public static whitelist restoreState(Landroid/os/Bundle;)Landroid/net/http/SslCertificate;
    .registers 9

    .line 124
    const/4 v1, 0x0

    if-nez p0, :cond_4

    .line 125
    return-object v1

    .line 128
    :cond_4
    const-string/jumbo v0, "x509-certificate"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v0

    .line 129
    if-nez v0, :cond_f

    .line 130
    move-object v7, v1

    goto :goto_24

    .line 133
    :cond_f
    :try_start_f
    const-string v2, "X.509"

    invoke-static {v2}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v2

    .line 134
    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v2, v3}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v0

    .line 135
    check-cast v0, Ljava/security/cert/X509Certificate;
    :try_end_20
    .catch Ljava/security/cert/CertificateException; {:try_start_f .. :try_end_20} :catch_22

    .line 138
    move-object v7, v0

    goto :goto_24

    .line 136
    :catch_22
    move-exception v0

    .line 137
    move-object v7, v1

    .line 140
    :goto_24
    new-instance v2, Landroid/net/http/SslCertificate;

    const-string v0, "issued-to"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 141
    const-string v0, "issued-by"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 142
    const-string/jumbo v0, "valid-not-before"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/http/SslCertificate;->parseDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v5

    .line 143
    const-string/jumbo v0, "valid-not-after"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/http/SslCertificate;->parseDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v6

    invoke-direct/range {v2 .. v7}, Landroid/net/http/SslCertificate;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;Ljava/security/cert/X509Certificate;)V

    .line 140
    return-object v2
.end method

.method public static whitelist saveState(Landroid/net/http/SslCertificate;)Landroid/os/Bundle;
    .registers 4

    .line 100
    if-nez p0, :cond_4

    .line 101
    const/4 p0, 0x0

    return-object p0

    .line 103
    :cond_4
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 104
    invoke-virtual {p0}, Landroid/net/http/SslCertificate;->getIssuedTo()Landroid/net/http/SslCertificate$DName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/http/SslCertificate$DName;->getDName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "issued-to"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    invoke-virtual {p0}, Landroid/net/http/SslCertificate;->getIssuedBy()Landroid/net/http/SslCertificate$DName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/http/SslCertificate$DName;->getDName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "issued-by"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    const-string/jumbo v1, "valid-not-before"

    invoke-virtual {p0}, Landroid/net/http/SslCertificate;->getValidNotBefore()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    const-string/jumbo v1, "valid-not-after"

    invoke-virtual {p0}, Landroid/net/http/SslCertificate;->getValidNotAfter()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    iget-object p0, p0, Landroid/net/http/SslCertificate;->mX509Certificate:Ljava/security/cert/X509Certificate;

    .line 109
    if-eqz p0, :cond_47

    .line 111
    :try_start_3b
    const-string/jumbo v1, "x509-certificate"

    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V
    :try_end_45
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_3b .. :try_end_45} :catch_46

    .line 113
    goto :goto_47

    .line 112
    :catch_46
    move-exception p0

    .line 115
    :cond_47
    :goto_47
    return-object v0
.end method


# virtual methods
.method public whitelist getIssuedBy()Landroid/net/http/SslCertificate$DName;
    .registers 2

    .line 249
    iget-object v0, p0, Landroid/net/http/SslCertificate;->mIssuedBy:Landroid/net/http/SslCertificate$DName;

    return-object v0
.end method

.method public whitelist getIssuedTo()Landroid/net/http/SslCertificate$DName;
    .registers 2

    .line 242
    iget-object v0, p0, Landroid/net/http/SslCertificate;->mIssuedTo:Landroid/net/http/SslCertificate$DName;

    return-object v0
.end method

.method public whitelist getValidNotAfter()Ljava/lang/String;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 235
    iget-object v0, p0, Landroid/net/http/SslCertificate;->mValidNotAfter:Ljava/util/Date;

    invoke-static {v0}, Landroid/net/http/SslCertificate;->formatDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getValidNotAfterDate()Ljava/util/Date;
    .registers 2

    .line 224
    iget-object v0, p0, Landroid/net/http/SslCertificate;->mValidNotAfter:Ljava/util/Date;

    invoke-static {v0}, Landroid/net/http/SslCertificate;->cloneDate(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getValidNotBefore()Ljava/lang/String;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 216
    iget-object v0, p0, Landroid/net/http/SslCertificate;->mValidNotBefore:Ljava/util/Date;

    invoke-static {v0}, Landroid/net/http/SslCertificate;->formatDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getValidNotBeforeDate()Ljava/util/Date;
    .registers 2

    .line 205
    iget-object v0, p0, Landroid/net/http/SslCertificate;->mValidNotBefore:Ljava/util/Date;

    invoke-static {v0}, Landroid/net/http/SslCertificate;->cloneDate(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getX509Certificate()Ljava/security/cert/X509Certificate;
    .registers 2

    .line 257
    iget-object v0, p0, Landroid/net/http/SslCertificate;->mX509Certificate:Ljava/security/cert/X509Certificate;

    return-object v0
.end method

.method public greylist inflateCertificateView(Landroid/content/Context;)Landroid/view/View;
    .registers 6

    .line 464
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 466
    const v1, 0x1090159

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 470
    invoke-virtual {p0}, Landroid/net/http/SslCertificate;->getIssuedTo()Landroid/net/http/SslCertificate$DName;

    move-result-object v1

    .line 471
    if-eqz v1, :cond_42

    .line 472
    const v2, 0x10205ae

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 473
    invoke-virtual {v1}, Landroid/net/http/SslCertificate$DName;->getCName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 474
    const v2, 0x10205b0

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 475
    invoke-virtual {v1}, Landroid/net/http/SslCertificate$DName;->getOName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 476
    const v2, 0x10205b2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 477
    invoke-virtual {v1}, Landroid/net/http/SslCertificate$DName;->getUName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 480
    :cond_42
    const v1, 0x1020518

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Landroid/net/http/SslCertificate;->mX509Certificate:Ljava/security/cert/X509Certificate;

    .line 481
    invoke-static {v2}, Landroid/net/http/SslCertificate;->getSerialNumber(Ljava/security/cert/X509Certificate;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 484
    invoke-virtual {p0}, Landroid/net/http/SslCertificate;->getIssuedBy()Landroid/net/http/SslCertificate$DName;

    move-result-object v1

    .line 485
    if-eqz v1, :cond_8a

    .line 486
    const v2, 0x102025f

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 487
    invoke-virtual {v1}, Landroid/net/http/SslCertificate$DName;->getCName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 488
    const v2, 0x1020261

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 489
    invoke-virtual {v1}, Landroid/net/http/SslCertificate$DName;->getOName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 490
    const v2, 0x1020263

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 491
    invoke-virtual {v1}, Landroid/net/http/SslCertificate$DName;->getUName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 495
    :cond_8a
    invoke-virtual {p0}, Landroid/net/http/SslCertificate;->getValidNotBeforeDate()Ljava/util/Date;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Landroid/net/http/SslCertificate;->formatCertificateDate(Landroid/content/Context;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 496
    const v2, 0x102039d

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 497
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 500
    invoke-virtual {p0}, Landroid/net/http/SslCertificate;->getValidNotAfterDate()Ljava/util/Date;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Landroid/net/http/SslCertificate;->formatCertificateDate(Landroid/content/Context;Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    .line 501
    const v1, 0x10202f9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 502
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 505
    const p1, 0x102051f

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iget-object v1, p0, Landroid/net/http/SslCertificate;->mX509Certificate:Ljava/security/cert/X509Certificate;

    .line 506
    const-string v2, "SHA256"

    invoke-static {v1, v2}, Landroid/net/http/SslCertificate;->getDigest(Ljava/security/cert/X509Certificate;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 507
    const p1, 0x102051d

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iget-object v1, p0, Landroid/net/http/SslCertificate;->mX509Certificate:Ljava/security/cert/X509Certificate;

    .line 508
    const-string v2, "SHA1"

    invoke-static {v1, v2}, Landroid/net/http/SslCertificate;->getDigest(Ljava/security/cert/X509Certificate;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 510
    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 314
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Issued to: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/net/http/SslCertificate;->mIssuedTo:Landroid/net/http/SslCertificate$DName;

    invoke-virtual {v1}, Landroid/net/http/SslCertificate$DName;->getDName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";\nIssued by: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/net/http/SslCertificate;->mIssuedBy:Landroid/net/http/SslCertificate$DName;

    .line 315
    invoke-virtual {v1}, Landroid/net/http/SslCertificate$DName;->getDName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 314
    return-object v0
.end method
