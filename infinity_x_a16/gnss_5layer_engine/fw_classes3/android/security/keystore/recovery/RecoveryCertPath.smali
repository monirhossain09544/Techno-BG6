.class public final Landroid/security/keystore/recovery/RecoveryCertPath;
.super Ljava/lang/Object;
.source "RecoveryCertPath.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field private static final greylist-max-o CERT_PATH_ENCODING:Ljava/lang/String; = "PkiPath"

.field public static final greylist-max-o CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/security/keystore/recovery/RecoveryCertPath;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final greylist-max-o mEncodedCertPath:[B


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 76
    new-instance v0, Landroid/security/keystore/recovery/RecoveryCertPath$1;

    invoke-direct {v0}, Landroid/security/keystore/recovery/RecoveryCertPath$1;-><init>()V

    sput-object v0, Landroid/security/keystore/recovery/RecoveryCertPath;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 2

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p1

    iput-object p1, p0, Landroid/security/keystore/recovery/RecoveryCertPath;->mEncodedCertPath:[B

    .line 74
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/security/keystore/recovery/RecoveryCertPath-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/security/keystore/recovery/RecoveryCertPath;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor greylist-max-o <init>([B)V
    .registers 2

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    iput-object p1, p0, Landroid/security/keystore/recovery/RecoveryCertPath;->mEncodedCertPath:[B

    .line 70
    return-void
.end method

.method public static greylist-max-o createRecoveryCertPath(Ljava/security/cert/CertPath;)Landroid/security/keystore/recovery/RecoveryCertPath;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 51
    :try_start_0
    new-instance v0, Landroid/security/keystore/recovery/RecoveryCertPath;

    invoke-static {p0}, Landroid/security/keystore/recovery/RecoveryCertPath;->encodeCertPath(Ljava/security/cert/CertPath;)[B

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/security/keystore/recovery/RecoveryCertPath;-><init>([B)V
    :try_end_9
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_9} :catch_a

    return-object v0

    .line 52
    :catch_a
    move-exception p0

    .line 53
    new-instance v0, Ljava/security/cert/CertificateException;

    const-string v1, "Failed to encode the given CertPath"

    invoke-direct {v0, v1, p0}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private static greylist-max-o decodeCertPath([B)Ljava/security/cert/CertPath;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 106
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    :try_start_3
    const-string v0, "X.509"

    invoke-static {v0}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v0
    :try_end_9
    .catch Ljava/security/cert/CertificateException; {:try_start_3 .. :try_end_9} :catch_16

    .line 113
    nop

    .line 114
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const-string p0, "PkiPath"

    invoke-virtual {v0, v1, p0}, Ljava/security/cert/CertificateFactory;->generateCertPath(Ljava/io/InputStream;Ljava/lang/String;)Ljava/security/cert/CertPath;

    move-result-object p0

    return-object p0

    .line 110
    :catch_16
    move-exception p0

    .line 112
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method private static greylist-max-o encodeCertPath(Ljava/security/cert/CertPath;)[B
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    .line 100
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    const-string v0, "PkiPath"

    invoke-virtual {p0, v0}, Ljava/security/cert/CertPath;->getEncoded(Ljava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 94
    const/4 v0, 0x0

    return v0
.end method

.method public greylist-max-o getCertPath()Ljava/security/cert/CertPath;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 65
    iget-object v0, p0, Landroid/security/keystore/recovery/RecoveryCertPath;->mEncodedCertPath:[B

    invoke-static {v0}, Landroid/security/keystore/recovery/RecoveryCertPath;->decodeCertPath([B)Ljava/security/cert/CertPath;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 89
    iget-object p2, p0, Landroid/security/keystore/recovery/RecoveryCertPath;->mEncodedCertPath:[B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 90
    return-void
.end method
